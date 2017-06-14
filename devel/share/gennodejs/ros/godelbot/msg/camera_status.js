// Auto-generated. Do not edit!

// (in-package godelbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class camera_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cam_status = null;
    }
    else {
      if (initObj.hasOwnProperty('cam_status')) {
        this.cam_status = initObj.cam_status
      }
      else {
        this.cam_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type camera_status
    // Serialize message field [cam_status]
    bufferOffset = _serializer.uint8(obj.cam_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera_status
    let len;
    let data = new camera_status(null);
    // Deserialize message field [cam_status]
    data.cam_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'godelbot/camera_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f873732a3c91ce66dcfe6356d6533413';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cam_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new camera_status(null);
    if (msg.cam_status !== undefined) {
      resolved.cam_status = msg.cam_status;
    }
    else {
      resolved.cam_status = 0
    }

    return resolved;
    }
};

module.exports = camera_status;
