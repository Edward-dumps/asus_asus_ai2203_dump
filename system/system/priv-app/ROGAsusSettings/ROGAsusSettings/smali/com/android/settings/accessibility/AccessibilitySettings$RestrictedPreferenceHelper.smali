.class Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestrictedPreferenceHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 549
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 550
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 705
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 707
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 709
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 710
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    invoke-static {p0, p4, p1}, Lcom/android/settings/Utils;->getAdaptiveIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 711
    invoke-virtual {v0, p5}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 712
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->setIconSize(I)V

    const/4 p0, 0x0

    .line 713
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 714
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 687
    const-class p0, Lcom/android/settings/accessibility/VolumeShortcutToggleAccessibilityServicePreferenceFragment;

    .line 688
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 690
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    .line 696
    const-class p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 699
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 694
    :cond_1
    const-class p0, Lcom/android/settings/accessibility/InvisibleToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    .line 740
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "preference_key"

    .line 741
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 742
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "summary"

    .line 743
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "component_name"

    .line 744
    invoke-virtual {p0, p1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "animated_image_res"

    .line 745
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "html_description"

    .line 746
    invoke-virtual {p0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putServiceExtras(Lcom/android/settingslib/RestrictedPreference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V
    .locals 0

    .line 756
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "resolve_info"

    .line 758
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 759
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "checked"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 769
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 771
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->accessibility_menu_item_settings:I

    .line 773
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "settings_title"

    .line 772
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "settings_component_name"

    .line 774
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V
    .locals 0

    if-nez p3, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 727
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    .line 726
    invoke-static {p0, p2, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 729
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 731
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 722
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method createAccessibilityActivityPreferenceList(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 633
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 634
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 635
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 636
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 635
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v10

    .line 638
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 639
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_3

    move-object/from16 v15, p1

    .line 643
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 644
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 645
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 647
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 648
    iget-object v2, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 649
    iget-object v2, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    .line 650
    const-class v2, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;

    .line 651
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 653
    iget-object v2, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 654
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_accessibility_generic:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_0
    move-object v4, v2

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    .line 658
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v5

    .line 661
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v10, :cond_2

    .line 664
    invoke-interface {v10, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 665
    :goto_3
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 667
    invoke-direct {v8, v5, v4, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V

    .line 670
    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 671
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    .line 672
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getAnimatedImageRes()I

    move-result v18

    .line 673
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v19

    .line 674
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, v16

    move-object v13, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v9

    move-object v9, v5

    move/from16 v5, v18

    move-object/from16 v18, v10

    move-object v10, v6

    move-object/from16 v6, v19

    .line 676
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 678
    invoke-direct {v8, v9, v13, v10}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto/16 :goto_0

    :cond_3
    return-object v12
.end method

.method createAccessibilityServicePreferenceList(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 564
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 565
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 566
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 567
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 566
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v10

    .line 568
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 570
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_4

    move-object/from16 v15, p1

    .line 574
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 575
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 576
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.asus.stitchimage"

    .line 578
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v19, v9

    move-object/from16 v16, v10

    move/from16 v18, v11

    goto/16 :goto_3

    .line 582
    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 586
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 587
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 588
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v17

    .line 589
    invoke-direct {v8, v6}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v18

    .line 591
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 592
    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    if-nez v2, :cond_1

    .line 593
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_accessibility_generic:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move v13, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v9

    move-object v9, v5

    move-object/from16 v5, v18

    .line 597
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v5

    if-eqz v10, :cond_3

    .line 602
    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 604
    :goto_2
    invoke-direct {v8, v5, v9, v0, v13}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V

    .line 606
    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v18

    .line 608
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v13}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 610
    iget-object v0, v8, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v20

    .line 611
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, v16

    move-object/from16 v16, v10

    move-object v10, v5

    move/from16 v5, v18

    move/from16 v18, v11

    move-object v11, v6

    move-object/from16 v6, v20

    move-object v15, v7

    move-object/from16 v7, v17

    .line 613
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 615
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v8, v10, v15, v0}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->putServiceExtras(Lcom/android/settingslib/RestrictedPreference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V

    .line 616
    invoke-direct {v8, v10, v9, v11}, Lcom/android/settings/accessibility/AccessibilitySettings$RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    move/from16 v11, v18

    move-object/from16 v9, v19

    goto/16 :goto_0

    :cond_4
    return-object v12
.end method
