package com.example.nfc_shopping;

import android.media.Image;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.Toast;

import com.example.data.Offer;
import com.squareup.picasso.Picasso;

public class OffersActivity extends AppCompatActivity {
    ImageView imgOff;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_offers);

        imgOff = (ImageView)findViewById(R.id.imgOff);

        Picasso.with(OffersActivity.this).load("http://my-demo.in/N_Shopping_Web/admin/"+Offer.getOff_img()).into(imgOff);

        //Toast.makeText(getApplicationContext(),Offer.getMessage(),Toast.LENGTH_LONG).show();
    }
}
