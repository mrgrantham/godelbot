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

class drive_param {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.movement = null;
    }
    else {
      if (initObj.hasOwnProperty('movement')) {
        this.movement = initObj.movement
      }
      else {
        this.movement = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drive_param
    // Serialize message field [movement]
    bufferOffset = _serializer.uint8(obj.movement, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drive_param
    let len;
    let data = new drive_param(null);
    // Deserialize message field [movement]
    data.movement = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'godelbot/drive_param';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1765b6536f8ff9cc8cd9c7b89dbdcbfd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 movement
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new drive_param(null);
    if (msg.movement !== undefined) {
      resolved.movement = msg.movement;
    }
    else {
      resolved.movement = 0
    }

    return resolved;
    }
};

module.exports = drive_param;
