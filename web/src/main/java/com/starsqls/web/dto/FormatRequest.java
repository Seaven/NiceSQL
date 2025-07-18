// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package com.starsqls.web.dto;

import com.starsqls.format.FormatOptions;

public class FormatRequest {
    private String sql;
    private FormatOptions options;

    public FormatRequest() {
    }

    public FormatRequest(String sql, FormatOptions options) {
        this.sql = sql;
        this.options = options;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public FormatOptions getOptions() {
        return options;
    }

    public void setOptions(FormatOptions options) {
        this.options = options;
    }
} 