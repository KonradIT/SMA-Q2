.class public Lcom/espressif/iot/esptouch/protocol/GuideCode;
.super Ljava/lang/Object;
.source "GuideCode.java"

# interfaces
.implements Lcom/espressif/iot/esptouch/task/ICodeData;


# static fields
.field public static final GUIDE_CODE_LEN:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DataCode don\'t support getBytes()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getU8s()[C
    .locals 3

    .prologue
    .line 32
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 33
    .local v0, "guidesU8s":[C
    const/4 v1, 0x0

    const/16 v2, 0x203

    aput-char v2, v0, v1

    .line 34
    const/4 v1, 0x1

    const/16 v2, 0x202

    aput-char v2, v0, v1

    .line 35
    const/4 v1, 0x2

    const/16 v2, 0x201

    aput-char v2, v0, v1

    .line 36
    const/4 v1, 0x3

    const/16 v2, 0x200

    aput-char v2, v0, v1

    .line 37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/protocol/GuideCode;->getU8s()[C

    move-result-object v0

    .line 19
    .local v0, "dataU8s":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    .line 20
    aget-char v4, v0, v2

    invoke-static {v4}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertU8ToHexString(C)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "hexString":Ljava/lang/String;
    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 23
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "hexString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
