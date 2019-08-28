Pod::Spec.new do |s|
s.name         = "LYSJumpController"
s.version      = "0.0.1"
s.summary      = "简化导航跳转和模态控制的步骤"
s.description  = <<-DESC
简化导航跳转和模态控制的步骤,简化导航跳转和模态控制的步骤
DESC
s.homepage     = "https://github.com/LIYANGSHUAI/LYSJumpController"

s.platform     = :ios, "8.0"
s.license      = "MIT"
s.author             = { "李阳帅" => "liyangshuai163@163.com" }

s.source       = { :git => "https://github.com/LIYANGSHUAI/LYSJumpController.git", :tag => s.version }

s.source_files  = "LYSJumpController", "LYSJumpController/*.{h,m}"
end
