package com.example.kiemtratuoi

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Ánh xạ các view
        val edtHoTen = findViewById<EditText>(R.id.edtHoTen)
        val edtTuoi = findViewById<EditText>(R.id.edtTuoi)
        val btnKiemTra = findViewById<Button>(R.id.btnKiemTra)
        val tvKetQua = findViewById<TextView>(R.id.tvKetQua)

        // Xử lý sự kiện khi nhấn nút "Kiểm tra"
        btnKiemTra.setOnClickListener {
            val hoTen = edtHoTen.text.toString().trim()
            val tuoiStr = edtTuoi.text.toString().trim()

            if (hoTen.isEmpty() || tuoiStr.isEmpty()) {
                tvKetQua.text = "Vui lòng nhập đầy đủ thông tin!"
                return@setOnClickListener
            }

            val tuoi = tuoiStr.toIntOrNull()
            if (tuoi == null || tuoi < 0) {
                tvKetQua.text = "Tuổi không hợp lệ!"
                return@setOnClickListener
            }

            val loaiNguoi = when {
                tuoi > 65 -> "Người già"
                tuoi in 6..65 -> "Người lớn"
                tuoi in 2..6 -> "Trẻ em"
                else -> "Em bé"
            }

            tvKetQua.text = "$hoTen thuộc nhóm: $loaiNguoi"
        }
    }
}
