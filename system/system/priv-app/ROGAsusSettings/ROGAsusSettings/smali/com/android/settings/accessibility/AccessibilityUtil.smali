.class public final Lcom/android/settings/accessibility/AccessibilityUtil;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityUtil;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method static convertKeyFromSettings(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "accessibility_display_magnification_enabled"

    return-object p0

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported userShortcutType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "accessibility_shortcut_target_service"

    return-object p0

    :cond_2
    const-string p0, "accessibility_button_targets"

    return-object p0
.end method

.method static getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 4

    .line 168
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 170
    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 p0, p0, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const/16 v3, 0x1d

    if-gt v0, v3, :cond_1

    return v2

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    return v1
.end method

.method public static getScreenHeightPixels(Landroid/content/Context;)I
    .locals 2

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    .line 390
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x1

    .line 389
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static getScreenWidthPixels(Landroid/content/Context;)I
    .locals 2

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 373
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    .line 376
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x1

    .line 375
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    .line 116
    sget p1, Lcom/android/settings/R$string;->accessibility_feature_state_on:I

    goto :goto_0

    .line 117
    :cond_1
    sget p1, Lcom/android/settings/R$string;->accessibility_feature_state_off:I

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 2

    const/4 v0, 0x1

    .line 336
    invoke-static {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x2

    .line 339
    invoke-static {p0, v1, p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method static hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 1

    .line 306
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 314
    :cond_0
    sget-object p1, Lcom/android/settings/accessibility/AccessibilityUtil;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 316
    :cond_1
    sget-object p0, Lcom/android/settings/accessibility/AccessibilityUtil;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 317
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 318
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method static hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 287
    invoke-static {p0, v1, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    .line 290
    invoke-static {p0, v1, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static isFloatingMenuEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_button_mode"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGestureNavigateEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "config_navBarInteractionMode"

    const-string v2, "integer"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 142
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSystemApp(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 399
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    return p0
.end method

.method public static isTouchExploreEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 156
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 157
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method static optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {p0, v1, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInValueToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 195
    invoke-static {p0, v0, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInValueToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method static optInValueToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 3

    .line 209
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance p1, Ljava/util/StringJoiner;

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 221
    :cond_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 237
    invoke-static {p0, v1, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutValueFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 240
    invoke-static {p0, v0, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutValueFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method static optOutValueFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 3

    .line 254
    new-instance v0, Ljava/util/StringJoiner;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 255
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 263
    :cond_0
    sget-object v2, Lcom/android/settings/accessibility/AccessibilityUtil;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 264
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/AccessibilityUtil;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
