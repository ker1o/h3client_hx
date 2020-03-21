let project = new Project('Heroes 3 Haxe');

project.addSources('src');
project.addAssets('Assets/**');
project.addLibrary('h3lib');
project.addDefine('js_source_map');

resolve(project);