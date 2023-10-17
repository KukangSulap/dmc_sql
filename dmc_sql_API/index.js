const { response } = require('express')
const express = require('express')
const app = express()

const con = require('./database')
const crypto = require('crypto')

const PORT = 8080
app.use(express.json())

app.listen(PORT, () => {
    console.log(`Server is up on http://localhost:${PORT}`);
})

// ===================================  Create  =====================================

// create siswa
app.post('/addSiswa', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const nis = null
    const nama = req.body.nama
    const semester = req.body.semester
    const kelas = req.body.kelas
    const tahun_pend = req.body.tahun_pend

    con.query("INSERT INTO tbl_siswa (nis, nama, semester, kelas, tahun_pend) VALUES(?, ?, ?, ?, ?)", [nis, nama, semester, kelas, tahun_pend], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah siswa dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Isi Pengeluaran
app.post('/addIsiPengeluaran', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_isi = null
    const id_pengeluaran = req.body.id_pengeluaran
    const kategori = req.body.kategori
    const nama_pengeluaran = req.body.nama_pengeluaran
    const tgl = req.body.tgl
    const jumlah = req.body.jumlah
    const note = req.body.note
    const bukti_pic = req.body.bukti_pic

    con.query("INSERT INTO isi_pengeluaran (id_isi, id_pengeluaran, kategori, nama_pengeluaran, tgl, jumlah, note, bukti_pic) VALUES(?, ?, ?, ?, ?, ?, ?, ?)", [id_isi, id_pengeluaran, kategori, nama_pengeluaran, tgl, jumlah, note, bukti_pic], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah siswa dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create lomba
app.post('/addLomba', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_lomba = null
    const nis = req.body.nis
    const tgl = req.body.tgl
    const notes = req.body.notes

    con.query("INSERT INTO lomba (id_lomba, nis, tgl, notes) VALUES(?, ?, ?, ?)", [id_lomba, nis, tgl, notes], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah lomba dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create nilai lomba
app.post('/addLombaNil', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_nil_lomba = null
    const id_lomba = req.body.id_lomba
    const penilaian = req.body.penilaian
    const nilai = req.body.nilai

    con.query("INSERT INTO lomba_nilai (id_nil_lomba, id_lomba, penilaian, nilai) VALUES(?, ?, ?, ?)", [id_nil_lomba, id_lomba, penilaian, nilai], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah nilai lomba dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create smart
app.post('/addSmart', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_smart = null
    const nis = req.body.nis
    const tgl = req.body.tgl
    const notes = req.body.notes

    con.query("INSERT INTO smart (id_smart, nis, tgl, notes) VALUES(?, ?, ?, ?)", [id_smart, nis, tgl, notes], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah smart dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create nilai smart
app.post('/addSmartNil', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_nil_smart = null
    const id_smart = req.body.id_smart
    const penilaian = req.body.penilaian
    const nilai = req.body.nilai
    const kategori = req.body.kategori

    con.query("INSERT INTO smart_nilai (id_nil_smart, id_smart, penilaian, nilai, kategori) VALUES(?, ?, ?, ?, ?)", [id_nil_smart, id_smart, penilaian, nilai, kategori], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah nilai smart dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create score smart
app.post('/addSmartScore', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_sc_smart = null
    const id_smart = req.body.id_smart
    const score = req.body.score
    const kategori = req.body.kategori

    con.query("INSERT INTO smart_score (id_sc_smart, id_smart, score, kategori) VALUES(?, ?, ?, ?)", [id_sc_smart, id_smart, score, kategori], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah score smart dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Ziyadah
app.post('/addZiyadah', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_ziyadah = null
    const nis = req.body.nis
    const tgl = req.body.tgl
    const nilai = req.body.nilai
    const juz = req.body.juz
    const halaman = req.body.halaman
    const notes = req.body.notes

    con.query("INSERT INTO ziyadah (id_ziyadah, nis, tgl, nilai, juz, halaman, notes) VALUES(?, ?, ?, ?, ?, ?, ?)", [id_ziyadah, nis, tgl, nilai, juz, halaman, notes], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah ziyadah dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Murajaah
app.post('/addMurajaah', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_murajaah = null
    const nis = req.body.nis
    const tgl = req.body.tgl
    const nilai = req.body.nilai
    const halaman = req.body.halaman
    const persentase = req.body.persentase
    const notes = req.body.notes

    con.query("INSERT INTO murajaah (id_murajaah, nis, tgl, nilai, halaman, persentase, notes) VALUES(?, ?, ?, ?, ?, ?, ?)", [id_murajaah, nis, tgl, nilai, halaman, persentase, notes], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah ziyadah dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Rapor 'Kualitatif'
app.post('/addSisKualitatif', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_kualitatif = null
    const nis = req.body.nis
    const pengagungan_ilmi = req.body.pengagungan_ilmi
    const tanggung_jawab = req.body.tanggung_jawab
    const kejujuran = req.body.kejujuran
    const manfaat = req.body.manfaat

    con.query("INSERT INTO sis_kualitatif (id_kualitatif, nis, pengagungan_ilmi, tanggung_jawab, kejujuran, manfaat) VALUES(?, ?, ?, ?, ?, ?)", [id_kualitatif, nis, pengagungan_ilmi, tanggung_jawab, kejujuran, manfaat], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah kualitatif dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Rapor 'Ibadah'
app.post('/addSisIbadah', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_ibadah = null
    const nis = req.body.nis
    const ger_wudhu = req.body.ger_wudhu
    const ger_shalat = req.body.ger_shalat
    const baca_wudhu = req.body.baca_wudhu
    const baca_shalat = req.body.baca_shalat

    con.query("INSERT INTO sis_ibadah (id_ibadah, nis, ger_wudhu, ger_shalat, baca_wudhu, baca_shalat) VALUES(?, ?, ?, ?, ?, ?)", [id_ibadah, nis, ger_wudhu, ger_shalat, baca_wudhu, baca_shalat], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah ibadah dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Rapor 'Hadits'
app.post('/addSisHadits', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_hadits = null
    const nis = req.body.nis
    const nama_hadits = req.body.nama_hadits
    const nilai_hadits = req.body.nilai_hadits
    const penilaian = req.body.penilaian
    const kategori = req.body.kategori

    con.query("INSERT INTO sis_hadits (id_hadits, nis, nama_hadits, nilai_hadits, penilaian, kategori) VALUES(?, ?, ?, ?, ?, ?)", [id_hadits, nis, nama_hadits, nilai_hadits, penilaian, kategori], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah hadits dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Rapor 'quran'
app.post('/addSisQuran', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_quran = null
    const nis = req.body.nis
    const tul_istiadzah = req.body.tul_istiadzah
    const tul_makharij = req.body.tul_makharij
    const tul_shifatul = req.body.tul_shifatul
    const lis_istiadzah = req.body.lis_istiadzah
    const lis_makharij = req.body.lis_makharij
    const lis_shifatul = req.body.lis_shifatul

    con.query("INSERT INTO sis_quran (id_quran, nis, tul_istiadzah, tul_makharij, tul_shifatul, lis_istiadzah, lis_makharij, lis_shifatul) VALUES(?, ?, ?, ?, ?, ?, ?, ?)", [id_quran, nis, tul_istiadzah, tul_makharij, tul_shifatul, lis_istiadzah, lis_makharij, lis_shifatul], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah quran dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Rapor 'tahfiz'
app.post('/addSisTahfiz', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_tahfiz = null
    const nis = req.body.nis
    const juz = req.body.juz
    const kelancaran = req.body.kelancaran
    const status = req.body.status
    const teruji = req.body.teruji
    const persentase = req.body.persentase

    con.query("INSERT INTO sis_tahfiz (id_tahfiz, nis, juz, kelancaran, status, teruji, persentase) VALUES(?, ?, ?, ?, ?, ?, ?)", [id_tahfiz, nis, juz, kelancaran, status, teruji, persentase], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah tahfiz dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Rapor 'hifdzun'
app.post('/addSishifdzun', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_hifdzun = null
    const nis = req.body.nis
    const tulis = req.body.tulis
    const lisan = req.body.lisan
    const jumlah = req.body.jumlah

    con.query("INSERT INTO sis_hifdzun (id_hifdzun, nis, tulis, lisan, jumlah) VALUES(?, ?, ?, ?, ?)", [id_hifdzun, nis, tulis, lisan, jumlah], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah hifdzun dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// create Rapor 'kehadiran'
app.post('/addSisKehadiran', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id_hadir = null
    const nis = req.body.nis
    const sakit = req.body.sakit
    const izin = req.body.izin
    const alpha = req.body.alpha

    con.query("INSERT INTO sis_hadir (id_hadir, nis, sakit, izin, alpha) VALUES(?, ?, ?, ?, ?)", [id_hadir, nis, sakit, izin, alpha], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah kehadiran dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

// ===================================  Read  =====================================

// read siswa
app.get('/getAllSiswa', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM tbl_siswa", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read isi pengeluaran
app.get('/getAllPengeluaran', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM isi_pengeluaran", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read lomba
app.get('/getAllLomba', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM lomba", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read nilai lomba
app.get('/getAllLombaNil', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM lomba_nilai", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read smart
app.get('/getAllSmart', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM smart", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read nilai smart
app.get('/getAllSmartNil', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM smart_nilai", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read score smart
app.get('/getAllSmartScore', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM smart_score", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read ziyadah
app.get('/getAllZiyadah', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM ziyadah", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read murajaah
app.get('/getAllMurajaah', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM murajaah", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read Rapor 'kualitatif'
app.get('/getAllKualitatif', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM sis_kualitatif", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read Rapor 'ibadah'
app.get('/getAllIbadah', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM sis_ibadah", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read Rapor 'hadits'
app.get('/getAllHadits', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM sis_ibadah", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read Rapor 'quran'
app.get('/getAllQuran', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM sis_quran", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read Rapor 'tahfiz'
app.get('/getAllTahfiz', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM sis_tahfiz", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read Rapor 'hifdzun'
app.get('/getAllHifdzun', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM sis_hifdzun", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

// read Rapor 'kehadiran'
app.get('/getAllKehadiran', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM sis_hadir", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})