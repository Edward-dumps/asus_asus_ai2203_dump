.class Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "NotchAppAspectRatioDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mApplications:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Landroid/view/View;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    .line 96
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->this$0:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mContext:Landroid/content/Context;

    .line 101
    iput-object p3, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 103
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 104
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mModes:Ljava/util/ArrayList;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v2, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->actualMaxAspect:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 113
    invoke-static {}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$000()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mModes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    invoke-static {}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$000()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mModes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {}, Landroid/content/pm/AspectRatioChecker;->getInstance()Landroid/content/pm/AspectRatioChecker;

    move-result-object p2

    iget-object p3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/pm/AspectRatioChecker;->mustNotFillNotchRegion(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 123
    invoke-static {}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$000()[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aget-object p2, p2, p3

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mModes:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object p3, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mContext:Landroid/content/Context;

    const v0, 0x1090003

    invoke-direct {p2, p3, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    new-instance p2, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;-><init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)V

    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    new-instance p2, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$2;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$2;-><init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)V

    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mApplications:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;)Ljava/util/ArrayList;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mModes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10

    const/4 v0, 0x0

    .line 171
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 172
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 173
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move-object v7, v4

    move-object v8, v7

    :goto_0
    if-ge v0, v3, :cond_3

    .line 175
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v6, :cond_0

    move-object v8, v4

    move v6, v9

    :cond_0
    if-nez v7, :cond_1

    .line 182
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 185
    :cond_1
    invoke-interface {p1, v0, v8, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 186
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 188
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-le v9, v5, :cond_2

    move v5, v9

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->mApplications:Landroid/widget/ListAdapter;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    return-void
.end method
