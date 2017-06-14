// Generated by gencpp from file godelbot/camera_status.msg
// DO NOT EDIT!


#ifndef GODELBOT_MESSAGE_CAMERA_STATUS_H
#define GODELBOT_MESSAGE_CAMERA_STATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace godelbot
{
template <class ContainerAllocator>
struct camera_status_
{
  typedef camera_status_<ContainerAllocator> Type;

  camera_status_()
    : cam_status(0)  {
    }
  camera_status_(const ContainerAllocator& _alloc)
    : cam_status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _cam_status_type;
  _cam_status_type cam_status;




  typedef boost::shared_ptr< ::godelbot::camera_status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::godelbot::camera_status_<ContainerAllocator> const> ConstPtr;

}; // struct camera_status_

typedef ::godelbot::camera_status_<std::allocator<void> > camera_status;

typedef boost::shared_ptr< ::godelbot::camera_status > camera_statusPtr;
typedef boost::shared_ptr< ::godelbot::camera_status const> camera_statusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::godelbot::camera_status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::godelbot::camera_status_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace godelbot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'godelbot': ['/home/james/godelbot_ws/src/godelbot/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::godelbot::camera_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::godelbot::camera_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::godelbot::camera_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::godelbot::camera_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::godelbot::camera_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::godelbot::camera_status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::godelbot::camera_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f873732a3c91ce66dcfe6356d6533413";
  }

  static const char* value(const ::godelbot::camera_status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf873732a3c91ce66ULL;
  static const uint64_t static_value2 = 0xdcfe6356d6533413ULL;
};

template<class ContainerAllocator>
struct DataType< ::godelbot::camera_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "godelbot/camera_status";
  }

  static const char* value(const ::godelbot::camera_status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::godelbot::camera_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 cam_status\n\
";
  }

  static const char* value(const ::godelbot::camera_status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::godelbot::camera_status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cam_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct camera_status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::godelbot::camera_status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::godelbot::camera_status_<ContainerAllocator>& v)
  {
    s << indent << "cam_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cam_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GODELBOT_MESSAGE_CAMERA_STATUS_H
