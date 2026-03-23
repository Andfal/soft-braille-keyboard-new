.class Lcom/nirenr/talkman/settings/BlackListSetting$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/BlackListSetting;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/nirenr/talkman/settings/BlackListSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/BlackListSetting;->c(Lcom/nirenr/talkman/settings/BlackListSetting;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    const v1, 0x7f07019b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->a:Lorg/json/JSONArray;

    invoke-direct {p1, v0, v1, p2}, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;I)V

    :goto_0
    invoke-virtual {p1}, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->show()V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/BlackListSetting;->c(Lcom/nirenr/talkman/settings/BlackListSetting;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    const v1, 0x7f0704a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->a:Lorg/json/JSONArray;

    invoke-direct {p1, v0, v1, p2}, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;I)V

    :goto_1
    invoke-virtual {p1}, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->show()V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/BlackListSetting;->c(Lcom/nirenr/talkman/settings/BlackListSetting;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    const v1, 0x7f0704c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->a:Lorg/json/JSONArray;

    invoke-direct {p1, v0, v1, p2}, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/BlackListSetting;->c(Lcom/nirenr/talkman/settings/BlackListSetting;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$4;->a:Lorg/json/JSONArray;

    invoke-direct {p1, v0, v1, p2}, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;I)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
