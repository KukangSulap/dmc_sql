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

// add siswa

app.post('/addSiswa', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const nis = null
    const nama = req.body.nama
    const semester = req.body.semester
    const kelas = req.body.kelas
    const tahun_pend = req.body.tahun_pend

    con.query("INSERT INTO tbl_siswa (nis, nama, semester, kelas, tahun_pend) VALUES(?, ?, ?, ?, ?)", [nis, nama, semester, kelas, tahun_pend], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah dengan error: ", err);
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