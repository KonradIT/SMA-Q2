.class public Lcom/google/protobuf/SingleFieldBuilder;
.super Ljava/lang/Object;
.source "SingleFieldBuilder.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

.field private b:Lcom/google/protobuf/GeneratedMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBType;"
        }
    .end annotation
.end field

.field private c:Lcom/google/protobuf/GeneratedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMType;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;",
            "Lcom/google/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    .line 91
    iput-object p2, p0, Lcom/google/protobuf/SingleFieldBuilder;->a:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .line 92
    iput-boolean p3, p0, Lcom/google/protobuf/SingleFieldBuilder;->d:Z

    .line 93
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->a:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->a:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    invoke-interface {v0}, Lcom/google/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->d:Z

    .line 235
    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->d:Z

    .line 126
    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/protobuf/GeneratedMessage;

    check-cast v0, Lcom/google/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    .line 211
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->c()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/SingleFieldBuilder;->a()V

    .line 216
    return-object p0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->a:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .line 98
    return-void
.end method

.method public getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBType;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->b(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage$Builder;

    iput-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 143
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    iget-object v1, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 144
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->e()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object v0
.end method

.method public getMessage()Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    return-object v0
.end method

.method public getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIType;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    goto :goto_0
.end method

.method public markDirty()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/protobuf/SingleFieldBuilder;->a()V

    .line 240
    return-void
.end method

.method public mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    iget-object v1, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessage;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 193
    iput-object p1, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/google/protobuf/SingleFieldBuilder;->a()V

    .line 198
    return-object p0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/SingleFieldBuilder;->c:Lcom/google/protobuf/GeneratedMessage;

    .line 176
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->c()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/SingleFieldBuilder;->b:Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/SingleFieldBuilder;->a()V

    .line 181
    return-object p0
.end method
