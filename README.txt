================================================================
QBox --- A matlab toolbox for quaternion and spatial rotation.
================================================================

Author: Ying Xiong.
Created: Oct 08, 2012.
Release: Feb 09, 2014 (v0.1).

================================================================
Quick start.
================================================================
>> addpath('Utils');
>> QBoxTest;
>> demoQBox;

================================================================
Features.
================================================================
* Basic operations (Hamilton product, reciprocal, etc.) for quaternion.
* Rotation using quaternion.
* Convert between quaternion and rotation matrix.

================================================================
Notation and convention.
================================================================
A quaternion is represented by a 4-vector 'q' as
  q = q(1) + q(2)*i + q(3)*j + q(4)*k.

All vectors in this toolbox are (should be) column vectors, and not checked
explicitly for efficiency reason.

Abbreviation:
  Quat:          Quaternion, 4-vector.
  Vec:           Vector, 3-vector.
  RotMatx:       Rotation matrix, 3x3 orthogonal matrix.
  HProd:         Hamilton product.
  Conj:          Conjugate.
  Recip:         Reciprocal.
