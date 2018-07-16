.class public Lcom/accloud/service/ACKLVMessage;
.super Ljava/lang/Object;
.source "ACKLVMessage.java"


# static fields
.field public static final KLV_TYPE_BOOLEAN:I = 0x1

.field public static final KLV_TYPE_BYTE:I = 0x2

.field public static final KLV_TYPE_BYTES:I = 0x9

.field public static final KLV_TYPE_DOUBLE:I = 0x7

.field public static final KLV_TYPE_FLOAT:I = 0x6

.field public static final KLV_TYPE_INT:I = 0x4

.field public static final KLV_TYPE_KLVOBJECT:I = 0xa0

.field public static final KLV_TYPE_LONG:I = 0x5

.field public static final KLV_TYPE_NULL:I = 0x0

.field public static final KLV_TYPE_SHORT:I = 0x3

.field public static final KLV_TYPE_STRING:I = 0x8

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/accloud/service/ACKLVMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/accloud/service/ACKLVMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(II)[B
    .locals 3
    .param p0, "key"    # I
    .param p1, "type"    # I

    .prologue
    .line 24
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 25
    .local v0, "data":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 26
    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 27
    sget-object v1, Lcom/accloud/service/ACKLVMessage;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/accloud/service/ACMessage;->byteToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v0
.end method

.method public static getBytes(III)[B
    .locals 3
    .param p0, "key"    # I
    .param p1, "type"    # I
    .param p2, "length"    # I

    .prologue
    .line 32
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 33
    .local v0, "data":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 34
    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 35
    const/4 v1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 36
    const/4 v1, 0x3

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 37
    sget-object v1, Lcom/accloud/service/ACKLVMessage;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/accloud/service/ACMessage;->byteToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public static getHead([B)Lcom/accloud/service/ACKLVHead;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 42
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 43
    .local v0, "key":I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0x1f

    .line 44
    .local v1, "type":I
    new-instance v2, Lcom/accloud/service/ACKLVHead;

    invoke-direct {v2, v0, v1}, Lcom/accloud/service/ACKLVHead;-><init>(II)V

    return-object v2
.end method
