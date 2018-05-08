<#macro build links>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <span class="navbar-brand">${reportDetails.pageName}</span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <#list links as link>
                    <li class="nav-item">
                        <#switch link>
                            <#case "suite_overview">
                                <a class="nav-link" href="index.html">Suite Overview</a>
                                <#break>
                            <#case "tag_summary">
                                <a class="nav-link" href="pages/tag-summary.html">Tag Summary</a>
                                <#break>
                        </#switch>
                    </li>
                </#list>
            </ul>
            <span class="text-light">${reportDetails.date}</span>
        </div>
    </nav>
</#macro>