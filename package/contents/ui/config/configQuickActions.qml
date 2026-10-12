import QtQuick 2.15
import QtQuick.Controls 2.15
import org.kde.plasma.plasmoid 2.0
import org.kde.kcmutils as KCM
import org.kde.kirigami 2.3 as Kirigami
import QtQuick.Layouts

KCM.SimpleKCM {
    id: quickActionsForm

    property alias cfg_enableQuickActions: enabledRadioButton.checked

    Kirigami.FormLayout {

        RowLayout {
            
            anchors.fill: parent

            ButtonGroup { 
                id: group 
            }

            ColumnLayout {
                AnimatedImage {
                    source: "assets/quick-action-enabled.gif"
                    sourceSize.width: 200
                    sourceSize.height: 150
                }

                RadioButton {
                    id: enabledRadioButton
                    text: i18n("Enabled")
                    ButtonGroup.group: group
                }
            }

            ColumnLayout {
                AnimatedImage {
                    source: "assets/quick-action-disabled.gif"
                    sourceSize.width: 200
                    sourceSize.height: 150
                }

                RadioButton {
                    checked: !quickActionsForm.cfg_enableQuickActions
                    text: i18n("Disabled")
                    ButtonGroup.group: group
                }
            }
            
        }
       
    }
}