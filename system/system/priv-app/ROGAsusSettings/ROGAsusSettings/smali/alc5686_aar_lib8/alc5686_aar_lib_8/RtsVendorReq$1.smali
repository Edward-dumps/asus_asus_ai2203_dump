.class final Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$1;
.super Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;
.source "RtsVendorReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;-><init>()V

    const/16 v0, 0xc0

    iput-short v0, p0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->byRequestType:S

    const/4 v0, 0x7

    iput-short v0, p0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->byRequest:S

    return-void
.end method
