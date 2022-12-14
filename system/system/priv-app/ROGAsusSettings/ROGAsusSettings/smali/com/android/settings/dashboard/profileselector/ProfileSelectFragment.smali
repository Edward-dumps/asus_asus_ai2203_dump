.class public abstract Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ProfileSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final LABEL:[I


# instance fields
.field private mContentView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 100
    sget v1, Lcom/android/settings/R$string;->category_personal:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->category_work:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->LABEL:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->convertPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 56
    sget-object v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->LABEL:[I

    return-object v0
.end method

.method private static convertPosition(I)I
    .locals 2

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    sget-object v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->LABEL:[I

    array-length v0, v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    return v0

    :cond_0
    return p0
.end method

.method private setupTabTextColor(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 12

    .line 148
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v3, v2, [[I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    const v7, 0x10100a1

    aput v7, v5, v6

    aput-object v5, v3, v6

    new-array v5, v6, [I

    aput-object v5, v3, v4

    new-array v2, v2, [I

    new-array v5, v4, [I

    aput v7, v5, v6

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "colorAccentPrimaryVariant"

    const-string v10, "attr"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 156
    invoke-static {v7, v8}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v7

    .line 155
    invoke-virtual {v0, v5, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    aput v0, v2, v6

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010038

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    aput p0, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 162
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public abstract getFragments()[Landroidx/fragment/app/Fragment;
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ProfileSelectFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 178
    sget p0, Lcom/android/settings/R$xml;->placeholder_preference_screen:I

    return p0
.end method

.method getTabId(Landroid/app/Activity;Landroid/os/Bundle;)I
    .locals 2

    const/4 p0, 0x1

    if-eqz p2, :cond_1

    const-string v0, ":settings:show_fragment_tab"

    const/4 v1, -0x1

    .line 189
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 193
    :cond_0
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 194
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return p0

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result p2

    .line 201
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getTabId(Landroid/app/Activity;Landroid/os/Bundle;)I

    move-result p2

    invoke-static {p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->convertPosition(I)I

    move-result p2

    .line 113
    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$id;->tab_container:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 114
    sget v0, Lcom/android/settings/R$id;->view_pager:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 115
    new-instance v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 116
    sget v1, Lcom/android/settings/R$id;->tabs:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 117
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 118
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->setupTabTextColor(Lcom/google/android/material/tabs/TabLayout;)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {v1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    .line 121
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 123
    iget-object p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 124
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p3, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x2

    .line 129
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010038

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p2

    .line 133
    invoke-virtual {v1, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 137
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method
