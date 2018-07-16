.class public Lcom/xlwtech/util/XlwString$StrRet;
.super Ljava/lang/Object;
.source "XlwString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xlwtech/util/XlwString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrRet"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field left:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    return-void
.end method
