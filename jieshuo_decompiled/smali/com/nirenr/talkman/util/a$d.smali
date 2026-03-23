.class Lcom/nirenr/talkman/util/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/a;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/a$d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nirenr/talkman/util/a$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/util/a$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/util/a$d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nirenr/talkman/util/a$d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/util/a$d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/nirenr/talkman/util/a;->B(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
