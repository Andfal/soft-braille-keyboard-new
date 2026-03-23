.class Lcom/nirenr/talkman/settings/BlackListSetting$5;
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$5;->b:Lcom/nirenr/talkman/settings/BlackListSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$5;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$5;->a:Lorg/json/JSONArray;

    const-string p2, "*"

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method
