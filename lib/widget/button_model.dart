import 'package:flutter/material.dart';

InkWell Button(Name, OnTap, radius) {
  return InkWell(

    onTap: OnTap,
    child: Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(color: Colors.green, borderRadius: radius),
      child: Center(
          child: Text(
            Name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
          )),
    ),
  );
}

