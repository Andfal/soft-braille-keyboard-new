.class Lcom/nirenr/talkman/settings/CloudNote$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote;->n(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/CloudNote;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$6;->b:Lcom/nirenr/talkman/settings/CloudNote;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$6;->b:Lcom/nirenr/talkman/settings/CloudNote;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/CloudNote$6;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nirenr/talkman/settings/CloudNote;->h(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
