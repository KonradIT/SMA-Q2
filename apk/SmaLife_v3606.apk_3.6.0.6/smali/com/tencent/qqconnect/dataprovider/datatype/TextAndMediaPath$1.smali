.class final Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;-><init>(Landroid/os/Parcel;Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;
    .locals 1

    .prologue
    .line 40
    new-array v0, p1, [Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath$1;->newArray(I)[Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;

    move-result-object v0

    return-object v0
.end method
