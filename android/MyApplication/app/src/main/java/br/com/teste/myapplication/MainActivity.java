package br.com.teste.myapplication;

import android.app.Dialog;
import android.graphics.Point;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    TextView txtEtiqueta;
    Button badgeButton;
    LinearLayout iconicButton;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        badgeButton = (Button) findViewById(R.id.badge_button);
        txtEtiqueta = (TextView) findViewById(R.id.txtEtiqueta);
        iconicButton = (LinearLayout) findViewById(R.id.iconic_button);

        iconicButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                mostraModalSucesso("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum");
            }
        });

        badgeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                mostraModalSucesso("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum");
            }
        });
    }

    private void mostraModalSucesso(String mensagem)
    {
        final Dialog modal = new Dialog(this);
        modal.setContentView(R.layout.modal_sucesso);
        modal.setCancelable(false);

        Button btnFechar = (Button) modal.findViewById(R.id.btnFechar);
        TextView txtMesnagem = (TextView) modal.findViewById(R.id.txtMensagem);

        txtMesnagem.setText(mensagem);
        btnFechar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                modal.dismiss();
            }
        });

        Display display = getWindowManager().getDefaultDisplay();
        Point size = new Point();
        display.getSize(size);
        int width = size.x;
        int height = size.y;

        final WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
        lp.copyFrom(modal.getWindow().getAttributes());
        lp.width = (int) (width * 0.9);
        lp.height = (int) (height * 0.7);
        modal.getWindow().setAttributes(lp);
        modal.show();
    }
}
