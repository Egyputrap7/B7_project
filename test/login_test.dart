import 'dart:convert';
import 'package:final_exam_project/component/gradiant_text.dart';
import 'package:final_exam_project/main.dart';
import 'package:final_exam_project/main_page.dart';
import 'package:final_exam_project/model/dokumentasi_model.dart';
import 'package:final_exam_project/model/matakuliah_model.dart';
import 'package:final_exam_project/model/profile_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MatakuliahModel Tests', () {
    test('MatakuliahModel toMap', () {
      // Arrange
      final matakuliah = MatakuliahModel(
        id: '1',
        namaMatkul: 'Matematika',
        namaDosen: 'Dr. John Doe',
        semester: '3',
      );

      // Act
      final result = matakuliah.toMap();

      // Assert
      expect(
        result,
        {
          'id': '1',
          'namaMatkul': 'Matematika',
          'namaDosen': 'Dr. John Doe',
          'semester': '3',
        },
      );
    });

    test('MatakuliahModel fromMap', () {
      // Arrange
      final map = {
        'id': '2',
        'namaMatkul': 'Fisika',
        'namaDosen': 'Prof. Jane Smith',
        'semester': '4',
      };

      // Act
      final result = MatakuliahModel.fromMap(map);

      // Assert
      
    });

    test('MatakuliahModel toJson', () {
      // Arrange
      final matakuliah = MatakuliahModel(
        id: '3',
        namaMatkul: 'Biologi',
        namaDosen: 'Dr. Sarah Johnson',
        semester: '2',
      );

      // Act
      final result = matakuliah.toJson();

      // Assert
      expect(
        result,
        '{"id":"3","namaMatkul":"Biologi","namaDosen":"Dr. Sarah Johnson","semester":"2"}',
      );
    });

    test('MatakuliahModel fromJson', () {
      // Arrange
      final json =
          '{"id":"4","namaMatkul":"Kimia","namaDosen":"Prof. Michael Brown","semester":"5"}';

      // Act
      final result = MatakuliahModel.fromJson(json);

      // Assert
      
    });
  });

  group('User Model Test', () { 

    group('ProfileModel Tests', () {
    test('ProfileModel toMap', () {
      // Arrange
      final profile = ProfileModel(
        uid: '1',
        nama: 'John Doe',
        username: 'john_doe123',
        nim: '123456',
        semester: '5',
        matkul: ['Math', 'Physics', 'Chemistry'],
      );

      // Act
      final result = profile.toMap();

      // Assert
      expect(
        result,
        {
          'uid': '1',
          'nama': 'John Doe',
          'username': 'john_doe123',
          'nim': '123456',
          'semester': '5',
          'matkul': ['Math', 'Physics', 'Chemistry'],
        },
      );
    });

    test('ProfileModel fromMap', () {
      // Arrange
      final map = {
        'uid': '2',
        'nama': 'Jane Smith',
        'username': 'jane_smith789',
        'nim': '654321',
        'semester': '4',
        'matkul': ['Biology', 'Computer Science'],
      };

      // Act
      final result = ProfileModel.fromMap(map);
    });

    test('ProfileModel toJson', () {
      // Arrange
      final profile = ProfileModel(
        uid: '3',
        nama: 'Michael Brown',
        username: 'michael_brown101',
        nim: '789012',
        semester: '3',
        matkul: ['History', 'Geography'],
      );

      // Act
      final result = profile.toJson();

      // Assert
      expect(
        result,
        '{"uid":"3","nama":"Michael Brown","username":"michael_brown101","nim":"789012","semester":"3","matkul":["History","Geography"]}',
      );
    });

    test('ProfileModel fromJson', () {
      // Arrange
      final json =
          '{"uid":"4","nama":"Sarah Johnson","username":"sarah_johnson456","nim":"345678","semester":"6","matkul":["Physics","Chemistry"]}';

      // Act
      final result = ProfileModel.fromJson(json);
    });
  });
});
group('DokumentasiModel Tests', () {
    test('DokumentasiModel toMap', () {
      // Arrange
      final dokumentasi = DokumentasiModel(
        id: '1',
        namaMatkul: 'Matematika',
        tanggal: '2023-03-25',
        jam: '14:30',
        uid: '3',
        image: 'image_url',
      );

      // Act
      final result = dokumentasi.toMap();

      // Assert
      expect(result, {
        'id': '1',  // Tambahkan kunci id di dalam map yang diharapkan
        'namaMatkul': 'Matematika',
        'tanggal': '2023-03-25',
        'jam': '14:30',
        'uid': '3',
        'image': 'image_url',
      });
    });

    test('DokumentasiModel toJson', () {
      // Arrange
      final dokumentasi = DokumentasiModel(
        id: '3',
        namaMatkul: 'Biologi',
        tanggal: '2023-03-27',
        jam: '10:00',
        uid: '9',
        image: 'image_url_3',
      );

      // Act
      final result = dokumentasi.toJson();

      // Assert
      expect(result, '{"id":"3","namaMatkul":"Biologi","tanggal":"2023-03-27","jam":"10:00","uid":"9","image":"image_url_3"}');
    });
  });
}
