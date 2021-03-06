## Licensed to Cloudera, Inc. under one
## or more contributor license agreements.  See the NOTICE file
## distributed with this work for additional information
## regarding copyright ownership.  Cloudera, Inc. licenses this file
## to you under the Apache License, Version 2.0 (the
## "License"); you may not use this file except in compliance
## with the License.  You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

<%!
from django.utils.translation import ugettext as _
from desktop.views import commonheader, commonfooter
%>
${ commonheader(_('403 - Access forbidden'), "", user, request) | n,unicode }

<link rel="stylesheet" href="${ static('desktop/css/httperrors.css') }">

<div class="container-fluid">
  <div class="row-fluid">
    <div class="span12 center">
      <div class="error-code">403</div>
    </div>
  </div>
  <div class="row-fluid">
    <div class="span6 offset3 center error-box">
      <h1>${_('Access forbidden.')}</h1>

      <p>${_("Sorry, you don't have permissions to access the page, or your session has expired.")}</p>
      <br/>
      <a href="/home">${ _('Go to My documents') }</a>
    </div>
  </div>
</div>


${ commonfooter(request, messages) | n,unicode }
