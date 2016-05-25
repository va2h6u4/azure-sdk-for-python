# coding=utf-8
# --------------------------------------------------------------------------
# Copyright (c) Microsoft and contributors.  All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.
# --------------------------------------------------------------------------

from .resource import Resource


class NetworkFeatures(Resource):
    """
    This is an object used to store a full view of network features (presently
    VNET integration and Hybrid Connections)
    for a web app.

    :param id: Resource Id
    :type id: str
    :param name: Resource Name
    :type name: str
    :param kind: Kind of resource
    :type kind: str
    :param location: Resource Location
    :type location: str
    :param type: Resource type
    :type type: str
    :param tags: Resource tags
    :type tags: dict
    :param virtual_network_name: The Vnet Name
    :type virtual_network_name: str
    :param virtual_network_connection: The Vnet Summary view
    :type virtual_network_connection: :class:`VnetInfo
     <azure.mgmt.web.models.VnetInfo>`
    :param hybrid_connections: The Hybrid Connections Summary view
    :type hybrid_connections: list of :class:`RelayServiceConnectionEntity
     <azure.mgmt.web.models.RelayServiceConnectionEntity>`
    """ 

    _validation = {
        'location': {'required': True},
    }

    _attribute_map = {
        'id': {'key': 'id', 'type': 'str'},
        'name': {'key': 'name', 'type': 'str'},
        'kind': {'key': 'kind', 'type': 'str'},
        'location': {'key': 'location', 'type': 'str'},
        'type': {'key': 'type', 'type': 'str'},
        'tags': {'key': 'tags', 'type': '{str}'},
        'virtual_network_name': {'key': 'properties.virtualNetworkName', 'type': 'str'},
        'virtual_network_connection': {'key': 'properties.virtualNetworkConnection', 'type': 'VnetInfo'},
        'hybrid_connections': {'key': 'properties.hybridConnections', 'type': '[RelayServiceConnectionEntity]'},
    }

    def __init__(self, location, id=None, name=None, kind=None, type=None, tags=None, virtual_network_name=None, virtual_network_connection=None, hybrid_connections=None):
        super(NetworkFeatures, self).__init__(id=id, name=name, kind=kind, location=location, type=type, tags=tags)
        self.virtual_network_name = virtual_network_name
        self.virtual_network_connection = virtual_network_connection
        self.hybrid_connections = hybrid_connections