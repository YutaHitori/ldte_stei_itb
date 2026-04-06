import 'dart:typed_data';

import 'package:pdf/widgets.dart' as pw;

final fakultas = [
  "Fakultas Ilmu dan Teknologi Kebumian (FITB)", 
  "Fakultas Matematika dan Ilmu Pengetahuan Alam (FMIPA)", 
  "Fakultas Seni Rupa dan Desain (FSRD)", 
  "Fakultas Teknik Mesin dan Dirgantara (FTMD)", 
  "Fakultas Teknik Pertambangan dan Perminyakan (FTTM)", 
  "Fakultas Teknik Sipil dan Lingkungan (FTSL)", 
  "Fakultas Teknologi Industri (FTI)", 
  "Sekolah Arsitektur, Perencanaan dan Pengembangan Kebijakan (SAPPK)", 
  "Sekolah Bisnis dan Manajemen (SBM)", 
  "Sekolah Farmasi (SF)", 
  "Sekolah Ilmu dan Teknologi Hayati (SITH)", 
  "Sekolah Teknik Elektro dan Informatika (STEI)"
];

final items = ['custom', 'Oscilloscope', 'Multimeter', 'Signal Generator'];

pw.TextStyle defaultTextStyle(ByteData ttf, ByteData ttfBold, ByteData ttfItalic, {double? fontSize}) {
  final calibri = pw.Font.ttf(ttf);
  final calibriBold = pw.Font.ttf(ttfBold);
  final calibriItalic = pw.Font.ttf(ttfItalic);
  return pw.TextStyle(
    font: calibri,
    fontNormal: calibri,
    fontBold: calibriBold,
    fontItalic: calibriItalic,
    fontWeight: pw.FontWeight.normal,
    fontSize: fontSize ?? 12,
    lineSpacing: 5
  );
}

final regexp = RegExp(r'\((.*?)\)'); 