#pragma once

#include "compilerexplorer_global.h"

#include <extensionsystem/iplugin.h>

namespace compilerExplorer {
namespace gui {
class ExplorerOutputPane;
}
namespace core {

class CompilerExplorerPlugin : public ExtensionSystem::IPlugin
{
	Q_OBJECT
	Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QtCreatorPlugin" FILE "CompilerExplorer.json")

public:
	CompilerExplorerPlugin();
	~CompilerExplorerPlugin();

	bool initialize(const QStringList &arguments, QString *errorString);
	void extensionsInitialized();
	ShutdownFlag aboutToShutdown();
private:
	gui::ExplorerOutputPane *mOutputPane;
};

} // namespace Internal
} // namespace QCompilerExplorer
