.class public Lcom/accloud/cloudservice/ACObjectMarshaller;
.super Ljava/lang/Object;
.source "ACObjectMarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshal(Lcom/accloud/service/ACObject;)[B
    .locals 4
    .param p0, "zo"    # Lcom/accloud/service/ACObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;-><init>()V

    .line 20
    .local v0, "jsonFactory":Lcom/fasterxml/jackson/core/JsonFactory;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 21
    .local v2, "output":Ljava/io/StringWriter;
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    .line 22
    .local v1, "jsonGenerator":Lcom/fasterxml/jackson/core/JsonGenerator;
    invoke-static {p0, v1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshalObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 24
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method private static marshalObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 7
    .param p0, "zo"    # Lcom/accloud/service/ACObject;
    .param p1, "jsonGenerator"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 29
    invoke-virtual {p0}, Lcom/accloud/service/ACObject;->getKeys()Ljava/util/Set;

    move-result-object v4

    .line 30
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Lcom/accloud/service/ACObject;

    if-eqz v6, :cond_0

    .line 33
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 34
    check-cast v5, Lcom/accloud/service/ACObject;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-static {v5, p1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshalObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 35
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 36
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 37
    check-cast v5, Ljava/util/List;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "a":Ljava/lang/Object;
    instance-of v6, v0, Lcom/accloud/service/ACObject;

    if-eqz v6, :cond_1

    .line 39
    check-cast v0, Lcom/accloud/service/ACObject;

    .end local v0    # "a":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->marshalObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 41
    .restart local v0    # "a":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 44
    .end local v0    # "a":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 46
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, v3, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 50
    return-void
.end method

.method public static unmarshal(Lcom/accloud/service/ACObject;[B)V
    .locals 7
    .param p0, "zo"    # Lcom/accloud/service/ACObject;
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;-><init>()V

    .line 56
    .local v1, "jsonFactory":Lcom/fasterxml/jackson/core/JsonFactory;
    new-instance v5, Ljava/io/StringReader;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    .line 57
    .local v2, "jsonParser":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 58
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v3, :cond_2

    .line 59
    invoke-static {p0, v2}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshallObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 60
    :cond_2
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v3, :cond_4

    .line 62
    :goto_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 63
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v3, :cond_0

    .line 67
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v3, :cond_3

    .line 68
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 69
    .local v0, "a":Lcom/accloud/service/ACObject;
    invoke-static {v0, v2}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshallObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 70
    const-string v5, "defaultKey"

    invoke-virtual {p0, v5, v0}, Lcom/accloud/service/ACObject;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    goto :goto_1

    .line 72
    .end local v0    # "a":Lcom/accloud/service/ACObject;
    :cond_3
    invoke-static {v3, v2}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshalValue(Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    .local v4, "value":Ljava/lang/Object;
    const-string v5, "defaultKey"

    invoke-virtual {p0, v5, v4}, Lcom/accloud/service/ACObject;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    goto :goto_1

    .line 77
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v6, "wrong json format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static unmarshalField(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 6
    .param p0, "zo"    # Lcom/accloud/service/ACObject;
    .param p1, "jsonParser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 95
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v3, :cond_1

    .line 96
    new-instance v2, Lcom/accloud/service/ACObject;

    invoke-direct {v2}, Lcom/accloud/service/ACObject;-><init>()V

    .line 97
    .local v2, "o":Lcom/accloud/service/ACObject;
    invoke-static {v2, p1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshallObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 119
    .end local v2    # "o":Lcom/accloud/service/ACObject;
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v3, :cond_3

    .line 101
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 102
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v3, :cond_0

    .line 106
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v3, :cond_2

    .line 107
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 108
    .local v0, "a":Lcom/accloud/service/ACObject;
    invoke-static {v0, p1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshallObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 109
    invoke-virtual {p0, v1, v0}, Lcom/accloud/service/ACObject;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    goto :goto_1

    .line 111
    .end local v0    # "a":Lcom/accloud/service/ACObject;
    :cond_2
    invoke-static {v3, p1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshalValue(Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .line 112
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v4}, Lcom/accloud/service/ACObject;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    goto :goto_1

    .line 116
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {v3, p1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshalValue(Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .line 117
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v4}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    goto :goto_0
.end method

.method private static unmarshalValue(Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 2
    .param p0, "t"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p1, "jsonParser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p0, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 124
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p0, :cond_2

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p0, :cond_3

    .line 127
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p0, :cond_4

    .line 129
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unmarshallObject(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2
    .param p0, "zo"    # Lcom/accloud/service/ACObject;
    .param p1, "jsonParser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 84
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_0

    .line 89
    return-void

    .line 87
    :cond_0
    invoke-static {p0, p1}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshalField(Lcom/accloud/service/ACObject;Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0
.end method
