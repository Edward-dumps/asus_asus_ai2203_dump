.class Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment$1;
.super Landroid/database/ContentObserver;
.source "AsusCaseTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;Landroid/os/Handler;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment$1;->this$0:Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment$1;->this$0:Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;

    invoke-virtual {p0}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->refreshCategory()V

    return-void
.end method
