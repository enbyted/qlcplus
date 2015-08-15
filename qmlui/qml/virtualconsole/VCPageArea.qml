/*
  Q Light Controller Plus
  VCPageArea.qml

  Copyright (c) Massimo Callegari

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/

import QtQuick 2.0

Rectangle
{
    anchors.fill: parent
    color: "transparent"

    property int page: 0

    Component.onCompleted: virtualConsole.renderPage(vcPage, page)

    Flickable
    {
        id: vcPage
        objectName: "vcPage" + page
        anchors.fill: parent
        z: 1
        boundsBehavior: Flickable.StopAtBounds
        //contentWidth: width
        //contentHeight: height
    }
}
