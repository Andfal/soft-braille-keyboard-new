.class Lcom/nirenr/talkman/util/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/a$f;->onCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/util/a$f;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/a$f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/a$f$a;->b:Lcom/nirenr/talkman/util/a$f;

    iput-object p2, p0, Lcom/nirenr/talkman/util/a$f$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/util/a$f$a;->b:Lcom/nirenr/talkman/util/a$f;

    iget-object v1, v0, Lcom/nirenr/talkman/util/a$f;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/nirenr/talkman/util/a$f;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/nirenr/talkman/util/a$f;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/nirenr/talkman/util/a$f;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/nirenr/talkman/util/a$f;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/nirenr/talkman/util/a$f$a;->a:Ljava/lang/String;

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/nirenr/talkman/util/a;->D(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
