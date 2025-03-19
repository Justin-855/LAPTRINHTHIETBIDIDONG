package com.example.btnhaptt

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.example.btnhaptt.ui.theme.BtnhapttTheme  // Đảm bảo import Theme của bạn

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            BtnhapttTheme {
                MainScreen()
            }
        }
    }
}

@Composable
fun MainScreen() {
    val context = LocalContext.current

    Column(
        modifier = Modifier.padding(16.dp)
    ) {
        Button(
            onClick = {
                val intent = Intent(context, MainActivity3::class.java)
                context.startActivity(intent)
            }
        ) {
            Text("Go to MainActivity3")
        }
    }
}
