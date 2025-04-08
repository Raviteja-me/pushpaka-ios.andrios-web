const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.newCloudFunction = functions
  .region("us-central1")
  .https.onCall(async (data, context) => {
    const origin = data.origin; // e.g., "14.619726,77.619845"
    const destination = data.destination; // e.g., "14.625415,77.630145"
    const apiKey = data.apiKey; // Google API key

    // Validate inputs
    if (
      typeof origin !== "string" ||
      typeof destination !== "string" ||
      typeof apiKey !== "string"
    ) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        'origin and destination must be strings in "latitude,longitude" format, and apiKey must be a string.',
      );
    }

    // Construct API URL
    const url = `https://maps.googleapis.com/maps/api/distancematrix/json?origins=${encodeURIComponent(
      origin,
    )}&destinations=${encodeURIComponent(destination)}&key=${apiKey}`;

    try {
      // Fetch data from Google Distance Matrix API
      const axios = require("axios");
      const response = await axios.get(url);

      // Parse distance from response
      if (
        response.data.status !== "OK" ||
        response.data.rows[0].elements[0].status !== "OK"
      ) {
        throw new Error(response.data.error_message || "Invalid API response");
      }

      const distance = response.data.rows[0].elements[0].distance.text;

      // Return the distance
      return `The distance is ${distance}`;
    } catch (error) {
      console.error("Error fetching distance from Google API:", error.message);
      throw new functions.https.HttpsError(
        "unknown",
        `Failed to fetch distance: ${error.message}`,
      );
    }
  });
