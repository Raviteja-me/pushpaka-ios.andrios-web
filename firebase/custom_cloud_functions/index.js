const admin = require("firebase-admin/app");
admin.initializeApp();

const newCloudFunction = require("./new_cloud_function.js");
exports.newCloudFunction = newCloudFunction.newCloudFunction;
const addition = require("./addition.js");
exports.addition = addition.addition;
const newapiReal = require("./newapi_real.js");
exports.newapiReal = newapiReal.newapiReal;
const distanceDurationPrice = require("./distance_duration_price.js");
exports.distanceDurationPrice = distanceDurationPrice.distanceDurationPrice;
