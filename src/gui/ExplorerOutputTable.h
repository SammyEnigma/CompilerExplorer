#ifndef EXPLOREROUTPUTTABLE_H
#define EXPLOREROUTPUTTABLE_H
#include <QTableView>

namespace compilerExplorer {
namespace gui{
class ExplorerOutputTable : public QTableView
{
	Q_OBJECT
public:
	ExplorerOutputTable(QWidget *parent = 0);
};
}
}
#endif // EXPLOREROUTPUTTABLE_H
