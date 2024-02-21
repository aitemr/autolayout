//
//  ViewController.swift
//  autolayout
//
//  Created by Islam Temirbek on 21.02.2024.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
     // MARK: - UI
     
     private let imageView: UIImageView = {
          let imageView = UIImageView()
          imageView.image = UIImage(named: "logo")
          return imageView
     }()
     
     private let label: UILabel = {
          let label = UILabel()
          label.text = "recreate.video"
          label.font = UIFont.boldSystemFont(ofSize: 29)
          return label
     }()
     
     // MARK: - Lifecycle
     
     override func viewDidLoad() {
          super.viewDidLoad()
          
          setupViews()
          setupConstraints()
     }
     
     // MARK: - Setup Views
     
     private func setupViews() {
          view.backgroundColor = .orange
          
          view.addSubview(imageView)
          view.addSubview(label)
     }

     // MARK: - Setup Constraints

     private func setupConstraints() {
//          NSLayoutConstraint.activate([
//               imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//               imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//               imageView.widthAnchor.constraint(equalToConstant: 200),
//               imageView.heightAnchor.constraint(equalToConstant: 200)
//          ])
//
//          NSLayoutConstraint.activate([
//               label.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -20),
//               label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//          ])
          
          imageView.snp.makeConstraints { make in
               make.top.equalToSuperview().offset(100)
//               make.leading.equalToSuperview().offset(30)
               make.trailing.equalToSuperview().offset(-30)
//               make.centerY.equalToSuperview()
               make.size.equalTo(200)
          }
          
          label.snp.makeConstraints { make in
//               make.leading.equalTo(imageView.snp.trailing).offset(5)
//               make.bottom.equalTo(imageView.snp.top).offset(-20)
               make.centerY.equalToSuperview()
          }
     }
}

