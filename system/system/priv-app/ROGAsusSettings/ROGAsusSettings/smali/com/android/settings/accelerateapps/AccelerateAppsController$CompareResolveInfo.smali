.class public Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;
.super Ljava/lang/Object;
.source "AccelerateAppsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accelerateapps/AccelerateAppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompareResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInnerPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/settings/accelerateapps/AccelerateAppsController;


# direct methods
.method constructor <init>(Lcom/android/settings/accelerateapps/AccelerateAppsController;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;->mInnerPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;->mInnerPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 402
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;->mInnerPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-static {p2}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 405
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 389
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method
