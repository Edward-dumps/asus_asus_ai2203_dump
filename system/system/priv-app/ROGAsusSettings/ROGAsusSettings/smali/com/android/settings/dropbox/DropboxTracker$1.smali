.class Lcom/android/settings/dropbox/DropboxTracker$1;
.super Ljava/lang/Object;
.source "DropboxTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dropbox/DropboxTracker;->outputAllDropbox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dropbox/DropboxTracker;


# direct methods
.method constructor <init>(Lcom/android/settings/dropbox/DropboxTracker;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/dropbox/DropboxTracker$1;->this$0:Lcom/android/settings/dropbox/DropboxTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxTracker$1;->this$0:Lcom/android/settings/dropbox/DropboxTracker;

    invoke-static {p0}, Lcom/android/settings/dropbox/DropboxTracker;->access$000(Lcom/android/settings/dropbox/DropboxTracker;)V

    return-void
.end method
