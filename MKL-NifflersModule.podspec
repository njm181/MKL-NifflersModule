Pod::Spec.new do |spec|

    spec.name         = "MKL-NifflersModule"
    spec.version      = "0.1.3"
    spec.summary      = "NifflersModule framework."
    spec.description  = "It is a Framework to control domain layer. Here we have repository, domain objects, and any cross feature"
    spec.homepage     = "https://github.com/njm181/MKL-NifflersModule"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author       = "Nicolas Molina"
    spec.source       = { :git => "https://github.com/njm181/MKL-NifflersModule.git", :tag => "0.1.3" }
    spec.source_files = "MKL-NifflersModule/**/*.{h,m,swift}"
    spec.swift_versions = "5.0"
    spec.platform     = :ios, "13.0"
end