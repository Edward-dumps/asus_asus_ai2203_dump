.class Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;
.super Ljava/lang/Object;
.source "AllInOnePreviewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;Landroid/view/View;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;->this$0:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    iput-object p2, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;->val$visibility:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method