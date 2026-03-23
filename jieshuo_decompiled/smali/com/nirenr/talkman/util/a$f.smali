.class Lcom/nirenr/talkman/util/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/a;->C(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/a$f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nirenr/talkman/util/a$f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/util/a$f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/util/a$f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/nirenr/talkman/util/a$f;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/util/a$f;->a:Landroid/content/Context;

    const v2, 0x7f0700ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/util/a$f$a;

    invoke-direct {v3, p0, p1}, Lcom/nirenr/talkman/util/a$f$a;-><init>(Lcom/nirenr/talkman/util/a$f;Ljava/lang/String;)V

    const-string p1, ""

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method
