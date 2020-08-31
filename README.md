A fully custom alert and dialog box showing messages after a form submit.
This widget can be used in form submit, login and payment forms.

<div style="display:flex">
<img width="355" alt="alert2" src="https://user-images.githubusercontent.com/44444254/91694162-42a88080-eb7d-11ea-8c2b-d0069b5b291b.png" width="200">
<img width="344" alt="alert1" src="https://user-images.githubusercontent.com/44444254/91694178-4b00bb80-eb7d-11ea-9878-4fb6cc9a0c75.png" width="200">

<div/>
<b>Usage in a raised button on press</b>

            RaisedButton(
                    onPressed: () {
                        showDialog(
                        context: context,
                        builder: (context) => CustomDialog(
                            content: Text(
                            'Payment Successful',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20.0,
                            ),
                            ),
                            title: Text('Health Insurance'),
                            firstColor: Color(0xFF3CCF57),
                            secondColor: Colors.white,
                            headerIcon: Icon(
                            Icons.check_circle_outline,
                            size: 120.0,
                            color: Colors.white,
                            ),
                        ),
                        );
                    },
                    child: Text('Press'),
                    )
