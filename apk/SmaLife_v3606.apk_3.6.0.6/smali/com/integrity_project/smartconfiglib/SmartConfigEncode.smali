.class public Lcom/integrity_project/smartconfiglib/SmartConfigEncode;
.super Ljava/lang/Object;
.source "SmartConfigEncode.java"


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[BLjava/lang/String;Z)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "freeData"    # [B
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "hasEncryption"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/integrity_project/smartconfiglib/SmartConfig20;

    invoke-direct {v0}, Lcom/integrity_project/smartconfiglib/SmartConfig20;-><init>()V

    .line 11
    .local v0, "sc":Lcom/integrity_project/smartconfiglib/SmartConfig20;
    invoke-virtual {v0, p1}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->setmSsid(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->setmKey([B)V

    .line 15
    invoke-virtual {v0, p3}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->setmFreeData([B)V

    .line 17
    invoke-virtual {v0, p4}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->setmToken(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p5}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->setHasEncryption(Z)V

    .line 21
    invoke-virtual {v0}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->encodePackets()V

    .line 23
    invoke-virtual {v0}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->getmData()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfigEncode;->mData:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public getmData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfigEncode;->mData:Ljava/util/ArrayList;

    return-object v0
.end method
