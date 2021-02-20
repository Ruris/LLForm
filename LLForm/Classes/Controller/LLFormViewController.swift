//
//  LLFormViewController.swift
//  LLForm
//
//  Created by ZHK on 2020/11/17.
//  
//

import UIKit

open class LLFormViewController: UIViewController {
    
    public let tableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)
    
    public var form = LLForm()

    open override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    open func setupUI() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate   = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        form.groups = [
            LLFormGroup(items: [
                LLFormItem(title: "", placeholder: "", unit: "", keyboardType: .default, key: "")
            ]),
            LLFormGroup(items: [
                LLFormItem(title: "", placeholder: "", unit: "", keyboardType: .default, key: "")
            ])
        ]
    }

}

extension LLFormViewController: UITableViewDataSource {
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        form.groups?.count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        form.groups?[section].items?.count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LLFormItemView
        cell.item = form.groups?[indexPath.section].items?[indexPath.row]
        return cell
    }
    
}

extension LLFormViewController: UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        form.groups?[indexPath.section].items?[indexPath.row].rowHeight ?? 0
    }

    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        15.01
    }

    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        0.01
    }
    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        nil
    }
    
    public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        nil
    }
}
