.class public Landroid/net/wifi/AnqpInformationElement;
.super Ljava/lang/Object;
.source "AnqpInformationElement.java"


# instance fields
.field private final mElementId:I

.field private final mPayload:[B

.field private final mVendorId:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/net/wifi/AnqpInformationElement;->mVendorId:I

    .line 65
    iput p2, p0, Landroid/net/wifi/AnqpInformationElement;->mElementId:I

    .line 66
    iput-object p3, p0, Landroid/net/wifi/AnqpInformationElement;->mPayload:[B

    return-void
.end method


# virtual methods
.method public getElementId()I
    .locals 0

    .line 74
    iget p0, p0, Landroid/net/wifi/AnqpInformationElement;->mElementId:I

    return p0
.end method

.method public getPayload()[B
    .locals 0

    .line 78
    iget-object p0, p0, Landroid/net/wifi/AnqpInformationElement;->mPayload:[B

    return-object p0
.end method

.method public getVendorId()I
    .locals 0

    .line 70
    iget p0, p0, Landroid/net/wifi/AnqpInformationElement;->mVendorId:I

    return p0
.end method
