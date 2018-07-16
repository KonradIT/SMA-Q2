.class public Lcom/smalife/adapter/RankField;
.super Ljava/lang/Object;
.source "RankField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cur_rank:Ljava/lang/String;

.field private header_url:Ljava/lang/String;

.field private u_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCur_rank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/adapter/RankField;->cur_rank:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smalife/adapter/RankField;->header_url:Ljava/lang/String;

    return-object v0
.end method

.method public getU_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smalife/adapter/RankField;->u_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCur_rank(Ljava/lang/String;)V
    .locals 0
    .param p1, "cur_rank"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/smalife/adapter/RankField;->cur_rank:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setHeader_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "header_url"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/smalife/adapter/RankField;->header_url:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setU_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "u_name"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smalife/adapter/RankField;->u_name:Ljava/lang/String;

    .line 32
    return-void
.end method
