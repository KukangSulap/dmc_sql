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

// ===================================  Create =====================================

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