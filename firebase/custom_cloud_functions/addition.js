const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.addition = functions
  .region("us-central1")
  .https.onCall((data, context) => {
    const x = data.x;
    const y = data.y;

    // Write your code below!
    if (typeof x !== "number" || typeof y !== "number") {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Both x and y must be integers.",
      );
    }

    const result = x + y;
    // Write your code above!

    return result;
  });
