.class public Lcom/smalife/wx/bean/TokenBean;
.super Ljava/lang/Object;
.source "TokenBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private access_token:Ljava/lang/String;

.field private expires_in:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/smalife/wx/bean/TokenBean;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/smalife/wx/bean/TokenBean;->expires_in:I

    return v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/smalife/wx/bean/TokenBean;->access_token:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setExpires_in(I)V
    .locals 0
    .param p1, "expires_in"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/smalife/wx/bean/TokenBean;->expires_in:I

    .line 19
    return-void
.end method
