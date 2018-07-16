.class public Lcom/accloud/service/ACFeedback;
.super Ljava/lang/Object;
.source "ACFeedback.java"


# instance fields
.field private extend:Lcom/accloud/service/ACObject;

.field private subDomain:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    iput-object v0, p0, Lcom/accloud/service/ACFeedback;->extend:Lcom/accloud/service/ACObject;

    .line 16
    return-void
.end method


# virtual methods
.method public addFeedback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/accloud/service/ACFeedback;->extend:Lcom/accloud/service/ACObject;

    invoke-virtual {v0, p1, p2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 41
    return-void
.end method

.method public addFeedbackPicture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/accloud/service/ACFeedback;->extend:Lcom/accloud/service/ACObject;

    invoke-virtual {v0, p1, p2}, Lcom/accloud/service/ACObject;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 51
    return-void
.end method

.method public getExtend()Lcom/accloud/service/ACObject;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/accloud/service/ACFeedback;->extend:Lcom/accloud/service/ACObject;

    return-object v0
.end method

.method public getSubDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/accloud/service/ACFeedback;->subDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/accloud/service/ACFeedback;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setSubDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "subDomain"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/accloud/service/ACFeedback;->subDomain:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/accloud/service/ACFeedback;->type:Ljava/lang/String;

    .line 32
    return-void
.end method
