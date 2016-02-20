<?xml version="1.0"?>
<recipe>

    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/></#if>

    <dependency mavenUrl="com.google.android.gms:play-services:8.1.0"/>

    <merge from="root/res/values/ad_config.xml.ftl" to="${escapeXmlAttribute(resOut)}/values/ad_config.xml" />
    <open file="${escapeXmlAttribute(resOut)}/values/ad_config.xml" />

    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_ad.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />

    <instantiate from="root/src/app_package/AdFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />

</recipe>
