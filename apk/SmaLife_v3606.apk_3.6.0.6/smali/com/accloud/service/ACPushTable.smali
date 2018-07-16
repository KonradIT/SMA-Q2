.class public Lcom/accloud/service/ACPushTable;
.super Ljava/lang/Object;
.source "ACPushTable.java"


# static fields
.field public static final OPTYPE_CREATE:I = 0x1

.field public static final OPTYPE_DELETE:I = 0x8

.field public static final OPTYPE_REPLACE:I = 0x2

.field public static final OPTYPE_UPDATE:I = 0x4


# instance fields
.field private className:Ljava/lang/String;

.field private columes:[Ljava/lang/String;

.field private opType:I

.field private primaryKey:Lcom/accloud/service/ACObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/accloud/service/ACObject;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "primaryKey"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/accloud/service/ACPushTable;->className:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/accloud/service/ACPushTable;->primaryKey:Lcom/accloud/service/ACObject;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/accloud/service/ACObject;I)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "columes"    # [Ljava/lang/String;
    .param p3, "primaryKey"    # Lcom/accloud/service/ACObject;
    .param p4, "opType"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/accloud/service/ACPushTable;->className:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/accloud/service/ACPushTable;->columes:[Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/accloud/service/ACPushTable;->primaryKey:Lcom/accloud/service/ACObject;

    .line 38
    iput p4, p0, Lcom/accloud/service/ACPushTable;->opType:I

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/accloud/service/ACPushTable;

    .line 78
    .local v0, "pushTable":Lcom/accloud/service/ACPushTable;
    iget-object v3, v0, Lcom/accloud/service/ACPushTable;->className:Ljava/lang/String;

    iget-object v4, p0, Lcom/accloud/service/ACPushTable;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v3, v0, Lcom/accloud/service/ACPushTable;->primaryKey:Lcom/accloud/service/ACObject;

    iget-object v4, p0, Lcom/accloud/service/ACPushTable;->primaryKey:Lcom/accloud/service/ACObject;

    invoke-virtual {v3, v4}, Lcom/accloud/service/ACObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 81
    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/accloud/service/ACPushTable;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getColumes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/accloud/service/ACPushTable;->columes:[Ljava/lang/String;

    return-object v0
.end method

.method public getOpType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/accloud/service/ACPushTable;->opType:I

    return v0
.end method

.method public getPrimaryKey()Lcom/accloud/service/ACObject;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/accloud/service/ACPushTable;->primaryKey:Lcom/accloud/service/ACObject;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/accloud/service/ACPushTable;->className:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setColumes([Ljava/lang/String;)V
    .locals 0
    .param p1, "columes"    # [Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/accloud/service/ACPushTable;->columes:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setOpType(I)V
    .locals 0
    .param p1, "opType"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/accloud/service/ACPushTable;->opType:I

    .line 67
    return-void
.end method

.method public setPrimaryKey(Lcom/accloud/service/ACObject;)V
    .locals 0
    .param p1, "primaryKey"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/accloud/service/ACPushTable;->primaryKey:Lcom/accloud/service/ACObject;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACPushTable{className=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACPushTable;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACPushTable;->columes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACPushTable;->primaryKey:Lcom/accloud/service/ACObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
