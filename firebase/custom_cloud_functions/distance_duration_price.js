const functions = require("firebase-functions");
const https = require("https");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

// Include your Google Maps API key
const GOOGLE_MAPS_API_KEY = "AIzaSyCTWepUVN_2uVxz-223ha0MEpsq-fu-kNw";

exports.distanceDurationPrice = functions
  .region("us-central1")
  .https.onCall(async (data, context) => {
    const destination = data.destination; // Expecting a string like 'latitude,longitude'
    const origin = data.origin; // Expecting a string like 'latitude,longitude'

    // Write your code below!

    // Validate input parameters
    if (typeof origin !== "string" || typeof destination !== "string") {
      throw new functions.https.HttpsError(
        "invalid-argument",
        'Both origin and destination must be strings in the format "latitude,longitude".',
      );
    }

    // Construct the Distance Matrix API URL
    const url = `https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins=${encodeURIComponent(
      origin,
    )}&destinations=${encodeURIComponent(destination)}&key=${GOOGLE_MAPS_API_KEY}`;

    try {
      // Make the API request using https
      const apiResult = await makeHttpsRequest(url);

      // Check for API errors
      if (apiResult.status !== "OK") {
        throw new functions.https.HttpsError(
          "unknown",
          `Google API returned an error: ${apiResult.status}`,
        );
      }

      const distanceElement = apiResult.rows[0].elements[0];

      if (distanceElement.status !== "OK") {
        throw new functions.https.HttpsError(
          "unknown",
          `Google API returned an element error: ${distanceElement.status}`,
        );
      }

      const distanceText = distanceElement.distance.text; // e.g., "5.3 km"
      const distanceValue = distanceElement.distance.value; // Distance in meters
      const durationText = distanceElement.duration.text; // e.g., "15 mins"

      // Write your code above!

      // Return the list of strings
      return [`${distanceText}`, `${durationText}`, `${distanceValue}`];
    } catch (error) {
      console.error("Error fetching distance:", error);
      throw new functions.https.HttpsError(
        "unknown",
        `Failed to fetch distance: ${error.message}`,
      );
    }
  });

// Helper function to make HTTPS requests
async function makeHttpsRequest(url) {
  return new Promise((resolve, reject) => {
    https
      .get(url, (res) => {
        let data = "";

        // Collect data chunks
        res.on("data", (chunk) => {
          data += chunk;
        });

        // Process the complete response
        res.on("end", () => {
          try {
            resolve(JSON.parse(data));
          } catch (error) {
            reject(new Error("Error parsing JSON response"));
          }
        });
      })
      .on("error", (error) => {
        reject(error);
      });
  });
}
