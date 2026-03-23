.class public Lcom/unisound/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1f40

.field public static final b:I = 0x3e80

.field public static final c:I = 0x13880

.field public static final d:Ljava/lang/String; = "far"

.field public static final e:Ljava/lang/String; = "near"

.field public static final f:Ljava/lang/String; = "8k"

.field public static final g:Ljava/lang/String; = "16k"

.field public static final h:Ljava/lang/String; = "16kto8k"

.field public static final i:Ljava/lang/String; = "general"

.field public static final j:Ljava/lang/String; = "poi"

.field public static final k:Ljava/lang/String; = "food"

.field public static final l:Ljava/lang/String; = "medical"

.field public static final m:Ljava/lang/String; = "movietv"

.field public static final n:Ljava/lang/String; = "textFormat"

.field public static final o:Ljava/lang/String; = "en"

.field public static final p:Ljava/lang/String; = "co"

.field public static final q:Ljava/lang/String; = "cn"

.field private static final r:Ljava/lang/String; = "modelType"

.field private static final s:Ljava/lang/String; = "subModel"

.field private static final t:Ljava/lang/String; = "voiceField"

.field private static final u:Ljava/lang/String; = "lang"

.field private static final v:Ljava/lang/String; = "sampleRate"

.field private static final w:Ljava/lang/String; = "oneshot"

.field private static final x:Ljava/lang/String; = "oneshot_key"

.field private static final y:Ljava/lang/String; = "alread_awpe"


# instance fields
.field private A:Ljava/lang/StringBuffer;

.field private B:Z

.field private C:I

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Z

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/g;->A:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/g;->B:Z

    const/16 v1, 0x3e80

    iput v1, p0, Lcom/unisound/sdk/g;->C:I

    iput-boolean v0, p0, Lcom/unisound/sdk/g;->D:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/g;->F:Z

    const-string v0, "near"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/g;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/g;->a(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/g;->d(Z)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/g;->f(Ljava/lang/String;)V

    const-string v0, "json"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/g;->g(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/g;->B:Z

    return-void
.end method

.method private h()V
    .locals 4

    iget-boolean v0, p0, Lcom/unisound/sdk/g;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/g;->B:Z

    iget-object v1, p0, Lcom/unisound/sdk/g;->A:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/sdk/g;->A:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/unisound/sdk/g;->A:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "lang"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/g;->D:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/g;->D:Z

    return v0
.end method

.method public a(I)Z
    .locals 2

    const/16 v0, 0x1f40

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e80

    if-eq p1, v0, :cond_1

    const v0, 0x13880

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/sdk/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".setSampleRate param error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/g;->c()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/unisound/sdk/g;->d()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/unisound/sdk/g;->b()V

    return v1
.end method

.method public b()V
    .locals 1

    const-string v0, "16kto8k"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/g;->e(Ljava/lang/String;)V

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/unisound/sdk/g;->C:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/g;->F:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "modelType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 1

    const-string v0, "8k"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/g;->e(Ljava/lang/String;)V

    const v0, 0x13880

    iput v0, p0, Lcom/unisound/sdk/g;->C:I

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "subModel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    const/4 p1, 0x1

    return p1
.end method

.method public c(Z)Z
    .locals 0

    iget-boolean p1, p0, Lcom/unisound/sdk/g;->F:Z

    return p1
.end method

.method public d()V
    .locals 1

    const-string v0, "16k"

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/g;->e(Ljava/lang/String;)V

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/unisound/sdk/g;->C:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "voiceField"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "oneshot"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/g;->A:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "sampleRate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "alread_awpe"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/g;->C:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "oneshot_key"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/unisound/sdk/g;->E:Ljava/lang/String;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/g;->z:Ljava/util/Map;

    const-string v1, "textFormat"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/unisound/sdk/g;->g()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/g;->h()V

    iget-object v0, p0, Lcom/unisound/sdk/g;->A:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
