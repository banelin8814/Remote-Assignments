//
//  ViewController.swift
//  week3App
//
//  Created by 林佑淳 on 2024/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    var isLoginMode: Bool = true
    
    @IBAction func didSwitchSegmented(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0  {
            disableCheckTextField()
            isLoginMode = true
        } else {
            checkTextField.backgroundColor = .white
            checkLabel.textColor = .black
            checkTextField.isUserInteractionEnabled = true
            isLoginMode = false
        }
        clearTextField()
    }
    
    @IBOutlet weak var accountTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var checkTextField: UITextField!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBAction func didTapButton(_ sender: UIButton) {
        checkTextFieldEmpty()
        if isLoginMode == true {
            loginMode()
        }else {
            if checkTextField.text == "" {
                showAlert(title: "Error", message: "Check should not be empty")
            }else{
                signUpMode()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        disableCheckTextField()
        setupTapGesture()
        accountTextField.delegate = self
        passwordTextField.delegate = self
        checkTextField.delegate = self
    }
    
    //MARK: - 清空文字欄的方法
    func clearTextField(){
        accountTextField.text = ""
        passwordTextField.text = ""
        checkTextField.text = ""
    }

    //MARK: - 關掉check方法
    func disableCheckTextField(){
        checkTextField.backgroundColor = .darkGray
        checkLabel.textColor = .gray
        checkTextField.isUserInteractionEnabled = false
        if checkTextField.text != "" {
            checkTextField.text = ""
        }
    }
    
    //MARK: - showAlert方法
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    //MARK: - 檢查沒寫完整的方法
    func checkTextFieldEmpty() {
        if accountTextField.text == "" && passwordTextField.text == "" && checkTextField.text == "" {
            showAlert(title: "Error", message: "TextField should not be empty")
        } else if accountTextField.text == "" {
            showAlert(title: "Error", message: "Account should not be empty")
        } else if passwordTextField.text == "" {
            showAlert(title: "Error", message: "Password should not be empty")
        } else {
            
        }
    }
    
    //MARK: - 註冊模式的方法
    func signUpMode(){
        if passwordTextField.text == checkTextField.text {
            showAlert(title: "Valid", message: "註冊成功")
        }else{
            showAlert(title: "Error", message: "SignUp fail")
        }
    }
    
    //MARK: - 登入模式的方法
    func loginMode(){
        if accountTextField.text == "appworks_school" && passwordTextField.text == "1234"{
            showAlert(title: "Login succeed", message: "登入成功")
        }else{
            showAlert(title: "Error", message: "Login fail")
        }
    }
    
    
    
   
}


//MARK: - 收鍵盤
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 關閉鍵盤
        textField.resignFirstResponder()
        return true
    }
    //點螢幕收回鍵盤
    func setupTapGesture() {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
            view.addGestureRecognizer(tapGesture)
        }

        @objc func handleTap() {
            view.endEditing(true)
        }
}
